import React, {Component} from "react";
import axios from "axios";
import { Link } from "react-router-dom";


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
    console.log(resultImage)

    return (
    <div>
      <h2>Your style is: {resultName}</h2>
      <p>{resultDescription}</p>
      <img width={500} height={500} src={resultImage}/>
      <Link to="/afterquiz/recommendations" > See your recommendations </Link>
    </div>
    )
  }
}