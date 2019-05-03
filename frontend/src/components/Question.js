
import React, {Component} from 'react';
import Card from 'react-bootstrap/Card'
import ListGroup from 'react-bootstrap/ListGroup'
import ListGroupItem from 'react-bootstrap/ListGroup'
import ChoicesList from "./ChoicesList.js";


export default class Question extends Component {
  render() {
    if (this.props.display) {
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
  return null;
  }
}