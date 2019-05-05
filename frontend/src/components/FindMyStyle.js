import React, {Component} from 'react';
import Card from 'react-bootstrap/Card';
import { Link } from "react-router-dom";
import ListGroup from 'react-bootstrap/ListGroup'

export default class FindMyStyle extends Component {
  render() {
    return (
      <div>
        <Card style={{ width:'25rem', margin:'5em auto' }}>
          <Card.Header>
            <h5>{this.props.question.text}</h5>
          </Card.Header>
          <ListGroup variant="flush">
            {this.props.question.choices.map((choice, index) => {
              return (<ListGroup.Item>
                {choice.text}
                <img style={{width:'40%'}}src={choice.image}/>
              </ListGroup.Item>)
            })}
          </ListGroup>
          <Link to="/result">Find my style</Link>
        </Card>
      </div>
    )
  }
}