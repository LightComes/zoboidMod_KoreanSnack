import os
from bing_image_downloader import downloader

# 요청하신 40개의 과자 리스트 (검색 정확도를 위해 한국어+영어 혼합 추천)
snacks = {"포카칩 과자": "Pocachip"
         , "꼬깔콘 과자" : "Kokoalcorn"
         , "홈런볼 과자" : "HomerunBall"
         , "새우깡 과자" : "Saewookang"
         , "프링글스 과자"     : "Pringles"
         , "맛동산 과자" : "Matdongsan"
         , "오징어땅콩 과자" : "SquidPeanut"
         , "카스타드 과자"     : "Custard"
         , "에이스 과자" : "Ace"
         , "허니버터칩 과자" : "HoneyButterChip"
         , "C콘칲 과자" : "CCornChip"
         , "마가렛트 과자"     : "Margaret"
         , "칙촉 과자"     : "ChicChoc"
         , "꿀꽈배기 과자"     : "HoneyTwistSnack"
         , "하임 과자"     : "Heim"
         , "치토스 과자" : "Cheetos"
         , "꼬북칩 과자" : "TurtleChips"
         , "오레오 과자" : "Oreo"
         , "칸쵸 과자"     : "Kancho"
         , "죠리퐁 과자" : "Jollypong"
         , "닥터유 바 과자" : "DrYouBar"
         , "쿠크다스 과자"     : "CouqueDasse"
         , "오감자 과자" : "OhGamja"
         , "스윙칩 과자" : "SwingChip"
         , "롯샌 과자"     : "LotteSand"
         , "카라멜콘 과자"     : "CaramelCorn"
         , "참쌀 과자"     : "Chamssal"
         , "양파링 과자" : "OnionRings"
         , "버터와플 과자"     : "ButterWaffle"
         , "빠다코코낫 과자" : "BadaCoconut"
         , "고래밥 과자" : "MarineBoy"
         , "촉촉한 초코칩 과자"    : "ChokchokhanChocochip"
         , "국희 과자"     : "Kukhee"
         , "예감 과자"     : "Yegam"
         , "썬 과자" : "SunChip"
         , "참붕어빵 과자"     : "MoistChewyCake"
         , "후레쉬 베리 과자" : "FreshBerry"
         , "닥터 유 다이제 과자": "DrYouDiget"
         , "초코픽 과자" : "ChocoPick"
         , "수미칩 과자"				 : "SumiChip"
}
base_dir = 'Korean_Snacks_Images';
index = 0;
print("과자 이미지 다운로드 및 이름 변경 작업을 시작합니다...\n")


for kr_query, eng_name in snacks.items():
    index += 1;
    print(f"[{kr_query}] 이미지 찾는 중...")
    
    # 이미지 다운로드 (검색어 이름인 한글 폴더명으로 우선 다운로드 됨)
    downloader.download(kr_query, limit=3, output_dir=base_dir, adult_filter_off=True, force_replace=False, timeout=60, verbose=False)
    
    # 2. 다운로드된 한글 폴더와 변경할 영문 폴더의 경로 설정
    downloaded_folder = os.path.join(base_dir, kr_query)
    new_folder = os.path.join(base_dir, str(index) + '_' + eng_name)  # 영문명 + 인덱스 번호로 폴더명 변경 (예: Pocachip1, Pocachip2 ...)
    
    # 3. 폴더명 및 파일명 영문으로 자동 변경 로직
    if os.path.exists(downloaded_folder):
        # 한글 폴더 이름을 영문으로 변경
        if not os.path.exists(new_folder):
            os.rename(downloaded_folder, new_folder)
        
        # 폴더 안의 파일들 이름 변경 (예: Image_1.jpg -> Pocachip_1.jpg)
        for idx, filename in enumerate(os.listdir(new_folder)):
            ext = os.path.splitext(filename)[1] # 원래 파일의 확장자(.jpg, .png 등) 추출
            old_file_path = os.path.join(new_folder, filename)
            # 새 파일 이름 지정 (영문명_1.jpg, 영문명_2.jpg ...)
            new_file_path = os.path.join(new_folder, f"{eng_name}_{idx+1}{ext}")
            
            os.rename(old_file_path, new_file_path)
            
    print(f"✅ {eng_name} 변환 완료!\n")

print("모든 다운로드 및 파일명 지정이 완벽하게 끝났습니다!")