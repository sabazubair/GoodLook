
import React, {Component} from 'react';
import Card from 'react-bootstrap/Card'
import ListGroup from 'react-bootstrap/ListGroup'
import ListGroupItem from 'react-bootstrap/ListGroup'
import ChoicesList from "./ChoicesList.js";
import { Link } from "react-router-dom";

export default class Question extends Component {
  render() {
    console.log("question", this.props.question)
    if (this.props.display) {
      if(this.props.question.id === 120){
        return (
          <div>
            <Card.Header>
              <h5>{this.props.question.text}</h5>
            </Card.Header>
            <ChoicesList
            choices={this.props.question.choices}
            nextQuestion={this.props.nextQuestion} />
            <Link to="/result" > Find out your style </Link>
          </div>
        );
      } else {
      return (
        <div>
          <Card.Header>
            <h5>{this.props.question.text}</h5>
          </Card.Header>
          <ChoicesList
          choices={this.props.question.choices}
          nextQuestion={this.props.nextQuestion} />
        </div>
      );
    }
  }
  return null;
  }
}