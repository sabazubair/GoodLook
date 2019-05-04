
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
      // Don't hard code ids, add lastQuestion to question
      return (
        <div>
          {this.props.question.id}
          <Card.Header>
            <h5>{this.props.question.text}</h5>
          </Card.Header>
          <ChoicesList 
          choices={this.props.question.choices} 
          nextQuestion={this.props.nextQuestion} />

          {this.props.question.id === this.props.lastQuestion && <Link to="/result" > Find out your style </Link>}
        </div>
      );
    } else {
      return null;
    }
  }
}

// make conditional based on the 