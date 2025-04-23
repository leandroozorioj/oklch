# OKLCH

Um pacote Flutter que oferece uma biblioteca de cores com suporte para conversão do espaço de cores OKLCH P3 para cores do Flutter, além de uma biblioteca de UI similar ao TailwindCSS e TailwindUI.

## Recursos

- Conversão entre espaço de cores OKLCH e Flutter Color
- Paleta de cores completa inspirada no TailwindCSS
- Sistema de estilos baseados no TailwindCSS
- Componentes de UI estilizados como TailwindUI
- Tema completo para Flutter baseado no TailwindCSS

## Instalação

Adicione `oklch` ao seu `pubspec.yaml`:

```yaml
dependencies:
  oklch: ^0.1.0
```

## Uso

### Importação

```dart
import 'package:oklch/oklch.dart';
```

### Cores OKLCH

Você pode criar cores OKLCH e convertê-las para Flutter:

```dart
// Criar uma cor OKLCH
final oklchColor = OklchColor(0.7, 0.2, 240);

// Converter para Flutter Color
final flutterColor = oklchColor.toColor();

// Converter de Flutter Color para OKLCH
final backToOklch = OklchColor.fromColor(flutterColor);
```

### Paleta de Cores

O pacote inclui uma paleta de cores completa inspirada no TailwindCSS:

```dart
// Acessar cores da paleta
final blueColor = OklchPalette.blue[500];
final redColor = OklchPalette.red[600];
```

### Tema TailwindCSS

Aplique o tema TailwindCSS ao seu aplicativo:

```dart
MaterialApp(
  theme: TailwindTheme.lightTheme(),
  darkTheme: TailwindTheme.darkTheme(),
  themeMode: ThemeMode.system,
  // ...
)
```

### Componentes UI

#### Botões

```dart
TwButton(
  label: 'Botão Primário',
  onPressed: () {
    // Fazer algo
  },
)

TwButton(
  label: 'Com Ícone',
  icon: Icons.check,
  variant: 'success',
  onPressed: () {},
)
```

Variantes disponíveis: `primary`, `secondary`, `outline`, `ghost`, `danger`, `success`.

Tamanhos disponíveis: `xs`, `sm`, `md`, `lg`, `xl`.

#### Cards

```dart
TwCard(
  padding: '4',
  shadow: 'md',
  child: Column(
    children: [
      Text('Título do Card'),
      Text('Conteúdo do card aqui...'),
    ],
  ),
)
```

#### Badges

```dart
TwBadge(
  text: 'Novo',
  variant: 'green',
  rounded: true,
)
```

Variantes disponíveis: `gray`, `red`, `yellow`, `green`, `blue`, `indigo`, `purple`, `pink`.

#### Campos de Entrada

```dart
TwInput(
  label: 'Nome',
  placeholder: 'Digite seu nome',
  helperText: 'Este campo é obrigatório',
  controller: _textController,
)

TwInput(
  label: 'Senha',
  obscureText: true,
  suffixIcon: Icons.visibility,
  onSuffixIconTap: () {
    // Alternar visibilidade da senha
  },
)
```

### Sistema de Estilos

O pacote também fornece um sistema de estilos completo inspirado no TailwindCSS:

```dart
// Acessar valores de espaçamento
final padding = TailwindStyles.spacing['4']; // 16.0

// Criar estilos de texto
final textStyle = TailwindStyles.getTextStyle(
  size: 'lg',
  weight: 'bold',
  color: OklchPalette.blue[600],
);

// Criar decorações de caixa
final boxDecoration = TailwindStyles.getBoxDecoration(
  backgroundColor: OklchPalette.gray[100],
  borderRadius: 'lg',
  shadow: 'md',
);
```

## Exemplos

Veja a pasta de exemplos para um aplicativo de demonstração completo mostrando todos os componentes e recursos.

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.

## Licença

Este pacote é licenciado sob a licença MIT.