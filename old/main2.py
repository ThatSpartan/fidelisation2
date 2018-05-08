users = [None, None, None]

class User:
    def __init__(self, first_name, last_name, points):
        self.first_name = first_name
        self.last_name = last_name
        self.name = first_name + ' ' + last_name

        if type(points) is list:
            self.points = points
        elif type(points) is int:
            self.points = []
            self.points.append(points)
        elif type(points) is str:
            self.points = []
            self.points.append(int(points))
        else:
            print('There\'s an error in the points input')

    def total_points(self):
        _list = self.points
        _sum = sum(filter(lambda x: isinstance(x, int), _list))
        return(_sum)

users[0] = User('Dominik', 'Cléroux', 100)
users[1] = User('Sylvain', 'Sabourin', [193, 383])
users[2] = User('Marielle', 'Cléroux', [1, 4, 10])

def get_member(_mem):
    print('searching for ' + _mem)
    for m in users:

        if m.first_name == _mem:
            return m

    print('member not found')
    return None

def ask_command():
    _input = input('add, remove, show, quit, amount > ')
    _args = _input.split()

    if len(_args) is 1:
        
        if _input == 'quit':
            print('quitting..')
            quit()

        elif _args[0] == 'show':
            print('showing..')
            for m in users:
                print('-- %s' % m.name)

        else:
            print('command not found or missing arguments')

    elif len(_args) > 1:

        if _args[0] == 'add':
            if len(_args) >= 4:
                _points = []
                for p in _args:
                    print('p : ' + p)
                    _points.append(p)

                _points = filter(lambda x: isinstance(x, int), _points) # error somewhere here

                print(_points)
                _new = User(_args[1], _args[2], _points)
                users.append(_new)
            else:
                print('please input [command] [first name] [last name] [points]')

        elif _args[0] == 'remove':
            if len(_args) == 3:
                _member = get_member(_args[1])
                if _member is not None:
                    users.remove(_member)

        elif _args[0] == 'amount':
            _member = get_member(_args[1])
            if _member is not None:
                print(_member.points)
                print(_member.total_points())

        else:
            print('command not found')

if __name__ == '__main__':
    while True:
        ask_command()
