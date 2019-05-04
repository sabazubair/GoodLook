import React, {Component} from 'react';
import Card from 'react-bootstrap/Card';
import { Link } from "react-router-dom";
import ChoicesList from "./ChoicesList.js";

export default class FindMyStyle extends Component {
  render() {
    return (
      <div>
        <Card style={{ width:'25rem', margin:'5em auto' }}>
          <Card.Header>
            <h5>{this.props.question.text}</h5>
          </Card.Header>
          <ChoicesList
          choices={this.props.question.choices} />
          <Link to="/result">Find my style</Link>
        </Card>
      </div>
    )
  }
}