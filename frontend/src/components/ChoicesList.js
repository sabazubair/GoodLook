    
import React, {Component} from 'react';
import Choice from "./Choice.js";
import ListGroup from 'react-bootstrap/ListGroup'

class ChoicesList extends Component {
  render() {
    return (
      <ListGroup variant="flush">
        {this.props.choices.map((choice, index) => {
          return <Choice
          choice={choice} 
          nextQuestion={this.props.nextQuestion} 
          key={choice.id}
       />
        })}
      </ListGroup>
    );
  }
}
export default ChoicesList;