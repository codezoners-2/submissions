/** @jsx React.DOM */

/** Timer (stopwatch) with component-based lap timing. */

// http://stackoverflow.com/questions/6312993/javascript-seconds-to-time-string-with-format-hhmmss
function display(msec) {
	var sec = Math.floor(msec / 1000);
	var tenths = Math.floor((msec - (sec * 1000)) / 100);
	var hours   = Math.floor(sec / 3600);
	var minutes = Math.floor((sec - (hours * 3600)) / 60);
	var seconds = sec - (hours * 3600) - (minutes * 60);

	if (hours   < 10) {hours   = "0"+hours;}
	if (minutes < 10) {minutes = "0"+minutes;}
	if (seconds < 10) {seconds = "0"+seconds;}
	return hours + ':' + minutes + ':' + seconds + "." + tenths;
}

var i = 0;

function newKey(key) {
	return key += 1;
};

var Lap = React.createClass({
	getInitialState: function () {
		return {
			lapTime: this.props.lapTime,
			key: this.props.key
		};
	},
	
	render: function () {
		return <h3> 
			<div className="row">
				<div className="col-xs-2">
					<span className="label label-default">{display(this.state.lapTime)}</span>
				</div>
				<div className="col-xs-2">
					<span className="label label-info">{display(this.props.splitTime)}</span>
				</div>
				<div className="col-xs-1">
					<button className="btn btn-default" onClick={this.props.lapRemove} key={this.state.key}>
						<span className="glyphicon glyphicon-remove-sign"></span>
					</button>
				</div>
			</div>
		</h3>;
	}
});

var Timer = React.createClass({
	getInitialState: function () {
		return {
			laps: [],
			running: false,
			started: 0,
			elapsed: 0
		};
	},

	tick: function () {
		if (this.state.running) {
			this.setState({elapsed: Date.now() - this.state.started});
		}
	},

	componentDidMount: function() {
		this.interval = setInterval(this.tick, 100);
	},

	componentWillUnmount: function() {
		clearInterval(this.interval);
	},

	start: function() {
		this.setState({running: true, started: Date.now()});
	},

	stop: function() {
		this.setState({running: false});
	},
	
	removeLap: function(k) {
		var l = this.state.laps;
        var keyArr = [];
        for (var j=0; j<l.length; j++) {
            if (l[j] !== undefined) {
                keyArr.push(l[j].props.key);
            }
        }
        var next = keyArr[keyArr.indexOf(k)+1];
        if (keyArr.indexOf(k) < keyArr.length-1 && keyArr.length-1) {
            l[next] = <Lap lapTime={l[next].props.lapTime}
                           splitTime={l[next].props.splitTime +
                               l[k].props.splitTime}
                           lapRemove={l[next].props.lapRemove}
                           key={l[next].props.key}
                        />;
        }
		delete l[k];
		this.setState({laps: l});
	},

	lap: function() {
		var l = this.state.laps;
        var last = l.length-1;
        for (; last>0; last--) {
            if (l[last] !== undefined) break;
        }
        var lastStateElapsed = l.filter(Object).length ?
                                            l[last].props.lapTime : 0;
		l.push(<Lap lapTime={this.state.elapsed}
					splitTime={this.state.elapsed - lastStateElapsed}
					lapRemove={this.removeLap.bind(this, i)}
					key={i}
				/>);
		i = newKey(i);
		this.setState({laps: l});
	},

	render: function () {
		var glyphClass = (this.state.running ? "stop" : "play");
		var action = (this.state.running ? this.stop : this.start);
		var lab = (this.state.running ? "success" : "default");
		var lapper = (this.state.running
					  ? <button className="btn btn-default" onClick={this.lap}>
							<span className="glyphicon glyphicon-plus-sign"></span>
						</button>
					  : <span />);
		return <div>
			<div>{this.state.laps}</div>
			<h1>
				<div className="row">
					<div className="col-xs-1">
						<button className="btn btn-default" onClick={action}>
							<span className={"glyphicon glyphicon-" + glyphClass}></span>
						</button>
					</div>
					<div className="col-xs-3">
						<span className={"label label-" + lab}>{display(this.state.elapsed)}</span>
					</div>
					<div className="col-xs-1">{lapper}</div>
				</div>
			</h1>
		</div>;
	}
});

React.renderComponent(
	<Timer />,
	document.getElementById("container")
);
