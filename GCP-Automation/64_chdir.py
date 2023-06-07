import os

path = input('Enter your path : ')
#path = 'E:\python-network-automation\dir_valid'

def main():
    try:
        cwd = os.getcwd()
        print(cwd)
        os.chdir(path)
        cwd = os.getcwd()
        print(cwd)
        
    except FileNotFoundError:
        print("Error: File not found in the path you entered")
    except NotADirectoryError:
        print("Error: Path you entered is not a directory")
    except PermissionError:
        print("Error: You do not have permission to access this path")    
    except Exception as e:
        print(e)
    finally:
        print("-----------------------------------------")
        print("Started writing python scripting properly")


if __name__ == '__main__':
    main()