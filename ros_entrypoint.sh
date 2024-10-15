#!/bin/bash
set -e

INTERFACE=${INTERFACE:-lo}

export CYCLONEDDS_URI="<CycloneDDS><Domain><General><Interfaces>
                            <NetworkInterface name=\"$INTERFACE\"/>
                        </Interfaces></General>
                        <Discovery>
                            <ParticipantIndex>auto</ParticipantIndex>
                            <MaxAutoParticipantIndex>100</MaxAutoParticipantIndex>
                        </Discovery></Domain></CycloneDDS>"

export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
