
import React, {Component} from 'react';
import ListGroup from 'react-bootstrap/ListGroup'


class Choice extends Component {
   Next = () => {
    const choice = this.props.choice;
    this.props.nextQuestion(choice)
  }

  render() {
    return (
      <div className="questionWrap col-4" onClick={this.Next}>
        <img src={this.props.choice.image}/>
        <h3>{this.props.choice.text}</h3>
        </div>
    );
  }
}
export default Choice;