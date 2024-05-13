$(document).ready(function() {
    // 이미지를 클릭하여 모달 열기
    $('#openModalButton').click(function() {
        $('#myModal').css('display', 'block');
    });

    $('.close').click(function(event) {
        event.preventDefault(); // 기본 클릭 이벤트를 막습니다.
        $('#myModal').css('display', 'none');
    });

    // 선택 버튼 클릭 시 이벤트 처리
    $('.select-button').click(function(event) {
        event.preventDefault(); // 기본 클릭 이벤트를 막습니다.

        // 선택된 테이블 데이터 가져오기
        var selectedRow = $('#dataTable .selected');

        if (selectedRow.length > 0) {
            var selectedSubject = selectedRow.find('td:eq(1)').text(); // 교과목 열의 텍스트

            // 선택된 교과목 값을 결과 표시 영역의 input 태그의 value에 설정
            $('#lecName').val(selectedSubject); // 폼 필드에 선택된 값 설정

            // 모달 닫기
            $('#myModal').css('display', 'none');
        } else {
            alert("선택된 행이 없습니다.");
        }
    });

    // 테이블 클릭 시 선택 표시
    $('#dataTable tr').click(function() {
        // 모든 행에서 선택 클래스 제거
        $('#dataTable tr').removeClass('selected');

        // 클릭한 행에 선택 클래스 추가
        $(this).addClass('selected');
    });
});
