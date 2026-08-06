import os
from PIL import Image

# 1. 작업할 최상위 폴더 (배경을 지운 파일들이 있는 곳)
base_dir = r'E:\Zomboid\mods\zoboidMod_KoreanSnack\42\imsi\pythonScript\02_remove_bg\images\rmbg'

# 2. 좀보이드 아이콘 픽셀 사이즈 설정 (가로, 세로)
# 기본은 32x32이며, 좀 더 선명하게 하려면 64x64로 변경하셔도 됩니다.
target_size = (45, 45) 

print(f"✨ 텍스처를 좀보이드 아이콘 사이즈({target_size[0]}x{target_size[1]})로 변경합니다...")

# 폴더 안의 파일들을 탐색합니다.
for root, dirs, files in os.walk(base_dir):
    for filename in files:
        # 이전에 배경을 지워둔 '_nobg.png' 파일만 골라서 작업합니다.
        if filename.endswith('.png'):
            input_path = os.path.join(root, filename)
            
            # 새 파일 이름: '_nobg.png'를 떼고 '_icon.png'를 붙입니다.
            output_filename = "item_" + filename
            output_path = os.path.join(root, output_filename)
            
            try:
                # 이미지 열기
                img = Image.open(input_path)
                
                # 이미지 사이즈 변경 (LANCZOS 필터가 축소할 때 화질 손실이 가장 적습니다)
                resized_img = img.resize(target_size, Image.Resampling.LANCZOS)
                
                # 결과물 저장
                resized_img.save(output_path, format="PNG")
                print(f"✅ 리사이징 완료: {output_filename}")
                
            except Exception as e:
                print(f"❌ 오류 발생 ({filename}): {e}")

print("\n🎉 모든 아이콘 리사이징이 완료되었습니다! 폴더에서 '_icon.png' 파일들을 확인하세요.")