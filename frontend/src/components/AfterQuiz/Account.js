import React, {Component} from "react";

export default class Account extends Component {
  render() {
    return (
      <div>
        <h1 className="quiz-title">Account</h1>
        <div className="jumbotron account">
          <img height={200} width={275} src="https://compote.slate.com/images/9a824e6f-c28f-4eca-9606-7c6e2e3ac95b.jpg"/>
          <div className="details">
          <form>
            <label>
              First Name:
              <input className="input-details" type="text" name="first name" value="Amita" />
            </label>
            <br/>
            <label>
              Last Name:
              <input className="input-details" type="text" name="last name" value="Parikh" />
            </label>
            <br/>
            <label>
              Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input className="input-details" type="email" name="email" value="amita@example.com" />
            </label>
            <br/>
            <label>
              Password:&nbsp;&nbsp;
              <input className="input-details" type="password" name="password" value="hello" />
            </label>
            <br/>
            <br/>
            <input type="submit" value="Submit" />
          </form>
          </div>
        </div>
      </div>
    )
  }
}