
import React, {Component} from 'react';
import Card from 'react-bootstrap/Card'
import ListGroup from 'react-bootstrap/ListGroup'
import ChoicesList from "./ChoicesList.js";

export default class Question extends Component {

  render() {
    console.log("question", this.props.question);

    if (this.props.display) {
      // Don't hard code ids, add lastQuestion to question
      return (
        <div>
          <Card.Header>
            <h5>{this.props.question.text}</h5>
            <p style={{backgroundColor:"pink"}}>{this.props.activeQuestion + 1} / 15</p>
          </Card.Header>
          <ChoicesList
          choices={this.props.question.choices}
          nextQuestion={this.props.nextQuestion} />
        </div>
      );
    } else {
      return null;
    }
  }
}
