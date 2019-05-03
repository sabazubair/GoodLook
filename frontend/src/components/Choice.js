    
import React, {Component} from 'react';
import ListGroup from 'react-bootstrap/ListGroup'
import ListGroupItem from 'react-bootstrap/ListGroup'


class Choice extends Component {
  
   Next = () => {
    const choice = this.props.choice;
    this.props.nextQuestion(choice)
  }
  
  render() {
    return (
      <ListGroup.Item onClick={this.Next}>
        {this.props.choice.text}
        <img style={{width:'40%'}}src={this.props.choice.image}/>
        </ListGroup.Item>
    );
  }
}
export default Choice;