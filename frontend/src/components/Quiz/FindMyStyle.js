import React, {Component} from 'react';
import Card from 'react-bootstrap/Card';
import { Link } from "react-router-dom";
import ListGroup from 'react-bootstrap/ListGroup'

export default class FindMyStyle extends Component {
  render() {
    return (
      <div>

        <div className="container">
          <div className="row quiz-header-wrap">
            <div className="col-10">
              <h1 className="quiz-title">Style Persona Quiz</h1>
            </div>
            <div className="col-2">
              <p className="counter">15 / 15</p>
            </div>
          </div>

          <div className="row">
            <div className="col-12">
              <h5>{this.props.question.text}</h5>
            </div>
          </div>

          <div className="row">
            {this.props.question.choices.map((choice, index) => {
              const img = choice.image ? <img src={choice.image} /> : null;
              return (
                <div className="questionWrap col-4" onClick={this.Next}>
                  {choice.text}
                  {img}
                </div>
              )})
            }
          </div>

        </div>
        <div className="quizResultBtn">
          <Link className="full-width-button btn btn-success" to="/result">Find my style</Link>
        </div>
      </div>
    )
  }
}