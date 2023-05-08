def test_simple() -> None:
  assert 1 + 1 == 2


def test_envionment() -> None:
  $USER = 'snail'
  x = 'USER'
  assert x in ${...}
  assert ${'U' + 'SER'} == 'snail'


def test_xonsh_party() -> None:
  from xonsh.built_ins import XSH
  orig = XSH.env.get('XONSH_INTERACTIVE')
  XSH.env['XONSH_INTERACTIVE'] = False
  try:
      x = 'xonsh'
      y = 'party'
      out = $(echo @(x + '-' + y)).strip()
      assert out == 'xonsh-party', 'Out really was <' + out + '>, sorry.'
  finally:
      XSH.env['XONSH_INTERACTIVE'] = orig
