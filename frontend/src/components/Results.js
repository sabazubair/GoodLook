import React, {Component} from "react";
import axios from "axios";

export default class Result extends Component {
  constructor(props) {
    super(props);
    this.state = {
      result:[]
    }
  }

  componentDidMount() {
    axios("/api/v1/result")
    .then(response => {
      console.log(response.data);
       this.setState({result:response.data})
    })
    .catch(error => console.log(error))

  }

  render(){
    let resultName = this.state.result.name;
    let resultDescription = this.state.result.description;
    let resultImage = this.state.result.image;

    return (
    <div>
      <h2>Your style is: {resultName}</h2>
      <p>{resultDescription}</p>
      <img width={100} height={100} src={resultImage}/>
    </div>
    )
  }
}