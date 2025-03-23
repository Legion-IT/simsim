# 📱 eSimSim - Flutter Web eSIM Store

**eSimSim** is a modern and responsive Flutter web application that lets users search, browse, and purchase eSIM plans for local, regional, and global destinations. Designed to look great on both desktop and mobile browsers, eSimSim features a sleek UI, dynamic content, animations, and form integrations.

---

## 🚀 Features

- 🌍 Searchable eSIM plans by destination (local, regional, global)
- 🎨 Beautiful animated wave hero section
- ⭐ Customer reviews with flag, stars, and a carousel
- 📦 Dynamic plan cards with mock API structure
- ✍️ Contact form with Formspree integration
- 📱 Mobile-friendly, responsive layout
- 🧠 Built with Flutter Web using modern best practices

---

## 🧰 Tech Stack

- **Flutter Web** (Dart)
- **carousel_slider** – for animated testimonials
- **http** – to post contact form messages
- **font_awesome_flutter** – for icons
- **Formspree** – email contact form backend
- **Apache** – production hosting (optional)

---

## 🔧 Local Development

1. **Clone the repository**
```bash
git clone https://github.com/yourusername/esimsim.git
cd esimsim
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Run locally**
```bash
flutter run -d chrome
```

4. **Build for Web**
```bash
flutter build web
```

---

## 🌐 Deployment (Apache/Linux)

Use the provided `deploy_flutter_web.sh` script to:
- Pull from Git
- Build the app
- Copy to Apache root (`/var/www/html`)
- Set correct MIME types

```bash
chmod +x deploy_flutter_web.sh
./deploy_flutter_web.sh
```

Then access the app at: `http://your-server-ip/`

---

## 📩 Contact Form Setup

Form submission is handled by [Formspree](https://formspree.io):
- Edit your `formspree.io/f/your-id` endpoint in `ContactFormSection.dart`
- Uses `http.post()` to send name, email, and message

---

## 📸 Screenshots

| Hero Section | Reviews Carousel | Plan Cards |
|--------------|------------------|-------------|
| ![hero](screenshots/hero.png) | ![reviews](screenshots/reviews.png) | ![plans](screenshots/plans.png) |

---


---

Feel free to update contact info, screenshots, and repo URL to match your project!