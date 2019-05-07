import React, {Component} from 'react';
import Card from 'react-bootstrap/Card';
import { Link } from "react-router-dom";
import ListGroup from 'react-bootstrap/ListGroup'

export default class FindMyStyle extends Component {
  render() {
    return (
      <div>
        <div className="container">
          <h1 className="quiz-title">Style Persona Quiz</h1>
          <Card style={{ width:'25rem', margin:'2em auto' }}>
            <Card.Header>
              <h5>{this.props.question.text}</h5>
              <p style={{backgroundColor:"pink"}}>15 / 15</p>
            </Card.Header>
            <ListGroup variant="flush">
              {this.props.question.choices.map((choice, index) => {
                return (<ListGroup.Item className="questionWrap d-flex flex-row justify-content-between">
                  {choice.text}
                </ListGroup.Item>)
              })}
            </ListGroup>
          </Card>
        </div>
        <div className="quizResultBtn">
          <Link className="full-width-button btn btn-success" to="/result">Find my style</Link>
        </div>
      </div>
    )
  }
}