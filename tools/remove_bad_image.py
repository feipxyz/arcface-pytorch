import argparse
import glob
import os


def clean_up(src_dir, clean_file):
    all_files = glob.glob(src_dir + "/*/*.jpg")
    print("before: {}".format(len(all_files)))

    keep_files = set()
    with open(clean_file, 'r') as fr:
        for line in fr:
            name = line.strip().split(' ')[0]
            keep_files.add(os.path.join(src_dir, name))

    for path in all_files:
        if path in keep_files:
            keep_files.remove(path)
        else:
            os.remove(path)

    all_files = glob.glob(src_dir + "/*/*.jpg")
    print("after: {}".format(len(all_files)))
        
if __name__ == "__main__":
    parser = argparse.ArgumentParser("ONNX Location Demo")
    parser.add_argument('--src_root', type=str, default=None, help='detection model path')
    parser.add_argument('--clean_file', type=str, default=None, help='segmentation model path')
    args = parser.parse_args()

    clean_up(args.src_root, args.clean_file)