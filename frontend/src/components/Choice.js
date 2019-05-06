
import React, {Component} from 'react';
import ListGroup from 'react-bootstrap/ListGroup'


class Choice extends Component {

   Next = () => {
    const choice = this.props.choice;
    this.props.nextQuestion(choice)
  }

  render() {
    return (
      <ListGroup.Item className="questionWrap d-flex flex-row justify-content-between" onClick={this.Next}>
        {this.props.choice.text}
        <img src={this.props.choice.image}/>
        </ListGroup.Item>
    );
  }
}
export default Choice;