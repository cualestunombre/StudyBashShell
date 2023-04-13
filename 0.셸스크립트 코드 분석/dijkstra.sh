#!/bin/bash

# 그래프 정보를 저장하는 배열
declare -A graph=(
    [A,B]=2 [A,C]=4 [B,C]=1 [B,D]=7 [C,D]=3 [C,E]=5 [D,E]=1
)

# 시작 정점
start="A"

# 시작 정점에서 각 정점까지의 최단 거리를 저장하는 배열
declare -A distances=([$start]=0)
# 최단 거리가 확정된 정점을 저장하는 배열
declare -A visited=()

# 그래프에서 최단 거리를 찾는 함수
find_shortest_distance() {
    local shortest_distance=1000000
    local shortest_vertex=""

    for vertex in "${!distances[@]}"; do 
        #key 목록을 불러옴 
        if [[ ! ${visited[$vertex]+_} && ${distances[$vertex]} -lt $shortest_distance ]]; then
            # ${visited[$vertex]+_}해당변수가 있으면 빈문자열 없으면 _를 반환
            shortest_distance=${distances[$vertex]}
            shortest_vertex=$vertex
        fi
    done

    echo $shortest_vertex
}

# 다익스트라 알고리즘 함수
dijkstra() {
    while true; do
        # 아직 최단 거리가 확정되지 않은 정점 중에서, 가장 짧은 거리를 가진 정점을 찾음
        local vertex=$(find_shortest_distance)
        if [[ -z $vertex ]]; then
            # 최단 거리가 확정되지 않은 정점이 없으면 종료
            break
        fi

        # 최단 거리가 확정된 정점으로 표시
        visited[$vertex]=1

        # 인접한 정점들의 거리를 업데이트
        for neighbor in "${!graph[@]}"; do
            if [[ ${neighbor%*,*} = $vertex ]]; then
                local neighbor_vertex=${neighbor#*,}
                local neighbor_distance=$((graph[$neighbor] + distances[$vertex]))
                if [[ ! ${distances[$neighbor_vertex]+_} || ${neighbor_distance} -lt ${distances[$neighbor_vertex]} ]]; then
                    distances[$neighbor_vertex]=$neighbor_distance
                fi
            fi
        done
    done
}

# 다익스트라 알고리즘 실행
dijkstra

# 결과 출력
echo "Start vertex: $start"
for vertex in "${!distances[@]}"; do
    echo "Shortest distance from $start to $vertex: ${distances[$vertex]}"
done