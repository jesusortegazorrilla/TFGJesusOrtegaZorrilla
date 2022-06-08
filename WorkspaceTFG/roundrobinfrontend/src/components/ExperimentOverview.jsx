import React, { Fragment, useContext, useEffect, useState } from 'react';
import { AppContext } from '../providers/ExperimentContext';
import { Button } from '@material-ui/core';

export function ExperimentOverview() {

    const { expName } = useContext(AppContext);
    const [experiment, setExperiment] = useState('');

    let url = "http://localhost:8080/experiments/";
    url = url.concat(String(expName));

    useEffect(() => {
        console.log(url);
        fetch(url)
            .then(res => res.json())
            .then((result) => {
                setExperiment(result);
                console.log(result);
            }
            )
    }, [])

    return (
        <Fragment>
            <div>
                <div class="container">
                    <div class="row align-items-center my-4">

                        {/* To modify the experiment main info */}
                        <div class="col-lg-6">
                            <div class="title">
                                <b>{experiment.name}</b>
                            </div>
                            <br></br>
                            <div class="experiments">
                                {experiment.description}
                            </div>
                        </div>

                        {/* To modify the experiment lists (add samples, test, participants...) */}
                        <div class="col-lg-6">
                            <div>
                                <Button variant="contained" style={{ backgroundColor: "blue", color: "white", margin: "20px auto auto auto", width: "200px"}} /*onClick={handleClick}*/>ADD SAMPLES</Button>
                            </div>
                            <div>
                                <Button variant="contained" style={{ backgroundColor: "blue", color: "white", margin: "20px auto auto auto", width: "200px"}} /*onClick={handleClick}*/>ADD TEST</Button>
                            </div>
                            <div>
                                <Button variant="contained" style={{ backgroundColor: "blue", color: "white", margin: "20px auto auto auto", width: "200px" }} /*onClick={handleClick}*/>ADD PARTICIPANTS</Button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </Fragment >
    )
}

export default ExperimentOverview;
