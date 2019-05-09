import React, {Component} from 'react';


class Choice extends Component {
   Next = () => {
    const choice = this.props.choice;
    this.props.nextQuestion(choice)
  }

  render() {
    const styles = this.props.choice.image ? "questionWrap col-4" : "questionWrap col-4 textOnly"
    return (
      <div className={styles} onClick={this.Next}>
        <div className='questionInner'>
        <p>{this.props.choice.text}</p>
        {this.props.choice.image && <img src={this.props.choice.image} />}
        </div>
      </div>
    );
  }
}
export default Choice;