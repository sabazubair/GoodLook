import React, {Component} from 'react';
import axios from "axios";
import Question from './Question.js';
import FindMyStyle from './FindMyStyle.js';
import Card from 'react-bootstrap/Card';
import { Link } from "react-router-dom";


export default class Quiz extends Component {
  constructor() {
    super();
    this.state = {
      user: null,
      questions: [],
      activeQuestion:0,
      resultLog: []
    }
  }

  componentDidMount() {
    axios("/api/v1/quiz")
    .then(response => {
      console.log(response.data);
      this.setState({questions:response.data})
    })
    .catch(error => console.log(error));

    axios("/api/v1/user")
    .then(response => {
      console.log(response.data);
      this.setState({user:response.data})
    })
    .catch(error => console.log(error))
  }

  nextQuestion = (choice) => {
    if (this.state.activeQuestion < this.state.questions.length) {
      console.log(choice);
      let styleId = choice.style_id;
      let resultLog = this.state.resultLog;
      resultLog.push(styleId);
      this.setState({
        activeQuestion: this.state.activeQuestion + 1,
        resultLog
      });
    }
  }

  mostFrequent = (resultLog) => {
    let count = {};
    resultLog.forEach(function (result) {
      if (count[result]) {
        count[result] += 1;
      } else {
        count[result] = 1;
      }
    });

    let mostResult;
    let highest = 0;
    for (let result in count) {
      if (count[result] > highest) {
        mostResult = result;
        highest = count[result];
      }
    }

    return mostResult;
  }

  sendStyleId = (id) => {
    let body = {
      user_id: this.state.user.id,
      style_id: id
    };

    axios.post('/api/v1/results',
      body)
    .then((response)=>{
      console.log(response);
      console.log("Style Id has been sent to server");
    })
  }

  sendMostFrequentStyle = () => {
    console.log('calculating style preference..');
    const mostFrequentStyle = this.mostFrequent(this.state.resultLog);
    this.sendStyleId(mostFrequentStyle);
    console.log('This is the most frequest style Id..');
    console.log(this.mostFrequent(this.state.resultLog));
  }

  render(){
    let display;
    let componentToDisplay;
    console.log('activeQuestion', this.state.activeQuestion);

    if (this.state.activeQuestion === 15) {
      this.sendMostFrequentStyle();
      componentToDisplay = <FindMyStyle
        question={this.state.questions[14]}/>
    } else {
      componentToDisplay =
          <div className="container">
            <h1 className="quiz-title">Style Persona Quiz</h1>
            <Card style={{ width:'25rem', margin:'2em auto' }}>
              {this.state.questions.map((item, idx) => {
            display = this.state.activeQuestion === idx;
            return <Question
              activeQuestion={this.state.activeQuestion}
              userId={this.state.user}
              question={item}
              key={idx}
              display={display}
              nextQuestion={this.nextQuestion}
            />
          })}
        </Card>
      </div>
    }

    return (
      <div>
        {componentToDisplay}
      </div>
    )
  }
}