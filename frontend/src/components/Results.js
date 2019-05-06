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
      <div className="text-center">
        <h2 style={{padding: 15}}>Your style persona is: {resultName}!</h2>
        <p>{resultDescription}</p>
      </div>
        <img className="result-image" width={500} height={400} src={resultImage}/>
        <Link className="btn btn-info btn-lg" to="/afterquiz/recommendations">Shop the Look</Link>
    </div>
    )
  }
}