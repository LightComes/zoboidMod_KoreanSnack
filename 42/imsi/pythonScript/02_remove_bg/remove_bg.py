import os
from rembg import remove
from PIL import Image

# 이미지가 저장된 최상위 폴더 이름 (이전 스크립트에서 만든 폴더)
base_dir = 'images'

print("✨ AI 배경 제거 작업을 시작합니다 (처음 실행 시 AI 모델 다운로드로 다소 시간이 걸릴 수 있습니다)...")

# 폴더 안의 모든 파일을 샅샅이 뒤집니다.
for root, dirs, files in os.walk(base_dir):
    for filename in files:
        # 이미지 파일만 골라내기
        if filename.lower().endswith(('.png', '.jpg', '.jpeg', '.webp')):
            # 이미 배경을 지운 결과물은 건너뛰기
            if "_nobg.png" in filename:
                continue
            
            input_path = os.path.join(root, filename)
            # 결과물 파일 이름 설정 (기존이름_nobg.png)
            output_filename = os.path.splitext(filename)[0].split("_")[0] + ".png"
            output_path = os.path.join(root + "\\rmbg", output_filename)
            
            print(f"[{filename}] 배경을 투명하게 날리는 중 ✂️...")
            
            try:
                # 1. 이미지 열기
                input_image = Image.open(input_path)
                
                # 2. rembg를 이용해 배경 싹둑 자르기!
                output_image = remove(input_image)
                
                # 3. 투명도가 유지되는 진짜 PNG 파일로 저장
                output_image.save(output_path, format="PNG")
                
            except Exception as e:
                print(f"❌ 오류 발생 ({filename}): {e}")

print("\n🎉 모든 이미지의 배경 제거가 완료되었습니다! 폴더에서 '_nobg.png'로 끝나는 파일들을 확인하세요.")