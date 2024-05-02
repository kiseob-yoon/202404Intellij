const apiKey = 'AIzaSyCGhQyWj6a975itCkAKU_vkojXiZHV2vto'; // 여기에 자신의 YouTube Data API 키를 입력하세요.
const channelId = 'UCvc8kv-i5fvFTJBFAk6n1SA'; // 조회할 채널의 ID
const videoChannel = document.querySelector('#video-channel');
const videoContainer = document.querySelector('#video-container');

const channelEndpoint = `https://www.googleapis.com/youtube/v3/channels?key=${apiKey}&id=${channelId}&part=snippet,contentDetails,statistics`;


const playlistId = 'PLuHgQVnccGMDZP7FJ_ZsUrdCGH68ppvPb'; // 재생목록의 ID를 입력하세요.

const playlistItemsEndpoint = `https://www.googleapis.com/youtube/v3/playlistItems?key=${apiKey}&playlistId=${playlistId}&part=snippet&maxResults=50`;


fetch(playlistItemsEndpoint)
    .then(res => res.json())
    .then(data => {
        const playlistItems = data.items;
        playlistItems.forEach(item => {
            const videoId = item.snippet.resourceId.videoId;
            const title = item.snippet.title;
            console.log(`Video Title: ${title}, Video ID: ${videoId}`);
            // 여기에 각 동영상에 대한 처리를 추가할 수 있습니다.
        });
    })
    .catch(error => console.error('Error fetching playlist items:', error));

// // URL에서 재생목록 ID 추출 함수
// function getPlaylistIdFromURL(url) {
//     const urlParams = new URLSearchParams(new URL(url).search);
//     return urlParams.get('list');
// }

// // 채널 정보 가져오기
// fetch(channelEndpoint)
//     .then(res => res.json())
//     .then(data => {
//         showChannel(data); // 채널 정보 표시
//         const playlistId = getPlaylistIdFromURL('https://www.youtube.com/watch?v=tZooW6PritE&list=PLuHgQVnccGMDZP7FJ_ZsUrdCGH68ppvPb&index=1');
//         requestSpecificPlaylist(playlistId); // 특정 재생목록 요청
//     });

fetch(channelEndpoint)
    .then(res => res.json())
    .then(data => {
        showChannel(data); // 채널 정보 표시
        requestSpecificPlaylist(playlistId); // 특정 재생목록 요청
    })
    .catch(error => console.error('Error fetching channel data:', error)); // 채널 정보 가져오기 실패 시 에러 처리

// 채널 정보 표시 함수
function showChannel(data) {
    const myId = data.items[0].id;
    const title = data.items[0].snippet.title;
    const desc = data.items[0].snippet.description;
    const videos = data.items[0].statistics.videoCount;
    const subscribers = data.items[0].statistics.subscriberCount;
    const views = data.items[0].statistics.viewCount;
    const imageLink = data.items[0].snippet.thumbnails.medium.url;

    let output = `
    <div class="col-md-6 mb-4 text-center">
        <img src="${imageLink}" alt="" class="img-fluid" />
        <br />
        <a href="https://www.youtube.com/channel/${myId}" target="_blank" class="btn btn-danger btn-sm">Go to My Youtube Channel</a>
    </div>
    <div class="col-md-6 mb-4">
        <ul class="list-group shadow-lg">	
            <li class="list-group-item bg-danger"><strong class="text-white">YOUTUBE CHANNEL : ${title}</strong></li>
            <li class="list-group-item"><strong>Channel Description</strong>: ${desc}</li>
            <li class="list-group-item"><strong>Videos</strong>: ${numberWithCommas(videos)}</li>
            <li class="list-group-item"><strong>Subscribers</strong>: ${numberWithCommas(subscribers)}</li>
            <li class="list-group-item"><strong>Views</strong>: ${numberWithCommas(views)}</li>
        </ul>
    </div>
    `;
    videoChannel.innerHTML = output;
}

// Add commas to number
function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
}

// 특정 재생목록 요청 함수
function requestSpecificPlaylist(playlistId) {
    const maxResults = 28;
    const playlistURL = `https://www.googleapis.com/youtube/v3/playlistItems?key=${apiKey}&playlistId=${playlistId}&part=snippet&maxResults=${maxResults}`;

    fetch(playlistURL)
        .then(res => res.json())
        .then(data => loadVideo(data)); // 동영상 로드 함수 호출
}

// 동영상 로드 함수
function loadVideo(data) {
    const playListItems = data.items;

    if(playListItems) {
        let output = '';

        playListItems.forEach(item => {
            const videoId = item.snippet.resourceId.videoId;

            output += `
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card card-body p-0 shadow embed-responsive embed-responsive-16by9">
                        <iframe height="auto" src="https://www.youtube.com/embed/${videoId}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                    </div>
                </div>
            `;
        });

        videoContainer.innerHTML = output;
    } else {
        videoContainer.innerHTML = 'Sorry, No videos uploaded!';
    }
}

