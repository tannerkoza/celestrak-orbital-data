# CelesTrak Orbital Data

A collection of LEO (Low Earth Orbit) constellation orbital parameters sourced from [CelesTrak](https://celestrak.org/).

## 📡 Overview

This repository provides automatically updated orbital data for various satellite constellations in LEO. The data is sourced from CelesTrak, a trusted provider of orbital element sets and collision assessment tools used by space professionals worldwide.

## 🚀 What's Included

- **TLE Files** (`.tle`): Two-Line Element sets containing orbital parameters
- **XML Files** (`.xml`): Orbital Mean Elements Messages (OMM) in XML format
- **Automated Updates**: Data is refreshed every 15 minutes via GitHub Actions

## 📊 Data Sources

All orbital data is sourced from [CelesTrak.org](https://celestrak.org/), a 501(c)(3) non-profit organization dedicated to making space data freely available to the space community.

## 🔄 Update Schedule

- **Frequency**: Every 15 minutes
- **Automation**: GitHub Actions workflow
- **Smart Updates**: Only commits when data actually changes

## 📋 File Formats

### TLE Format
Two-Line Element sets are the standard format for distributing orbital elements:
```
SATELLITE NAME
1 25544U 98067A   08264.51782528 -.00002182  00000-0 -11606-4 0  2927
2 25544  51.6416 247.4627 0006703 130.5360 325.0288 15.72125391563537
```

### XML Format
OMM (Orbital Mean Elements Message) format following CCSDS standards for space data exchange.

## 🛠️ Usage

### Direct Download
Browse and download individual files directly from the repository.

### Clone Repository
```bash
git clone https://github.com/navsuite/celestrak-orbital-data.git
cd celestrak-orbital-data
```

### Programmatic Access
Use the GitHub API to access files programmatically:
```bash
curl -H "Accept: application/vnd.github.v3.raw" \
  https://api.github.com/repos/navsuite/celestrak-orbital-data/contents/[filename]
```

## 🎯 Use Cases

- **Satellite Tracking**: Use TLE data for real-time satellite position calculations
- **Orbit Prediction**: Predict future satellite positions and passes
- **Collision Assessment**: Analyze potential conjunctions between space objects
- **Mission Planning**: Support for spacecraft mission design and operations
- **Research**: Academic and commercial space research applications

## 🔧 Working with the Data

### Python Example
```python
# Example using pyorbital library
from pyorbital.orbital import Orbital
from datetime import datetime

# Load TLE data
satellite = Orbital("SATELLITE NAME", tle_file="path/to/file.tle")

# Get current position
lon, lat, alt = satellite.get_lonlatalt(datetime.now())
print(f"Position: {lat:.4f}°N, {lon:.4f}°E, {alt:.2f} km")
```

### Libraries & Tools
- **Python**: `pyorbital`, `skyfield`, `poliastro`
- **JavaScript**: `satellite.js`
- **C++**: `SGP4` libraries
- **MATLAB**: Aerospace Toolbox

## 📈 Data Quality

- **Source**: CelesTrak.org - trusted by space professionals worldwide
- **Accuracy**: Suitable for most tracking and analysis applications
- **Timeliness**: Updated every 15 minutes to ensure current data
- **Reliability**: Automated monitoring and error handling

## ⚠️ Important Notes

- **Ephemeris Age**: TLE accuracy degrades over time; use recent data for best results
- **Coordinate System**: Data is in Earth-centered, Earth-fixed (ECEF) coordinates
- **Epoch**: Pay attention to the epoch time in TLE data for accuracy
- **Atmospheric Drag**: LEO satellites experience significant orbital decay

## 🤝 Contributing

This repository is primarily automated, but contributions are welcome:

1. **Issues**: Report data quality issues or suggest improvements
2. **Documentation**: Help improve documentation and examples
3. **Tools**: Contribute analysis tools or utilities

## 📄 License

This repository contains publicly available orbital data from CelesTrak. The data itself is provided under CelesTrak's terms of use. Please respect their [usage guidelines](https://celestrak.org/) and consider supporting their mission.

## 🙏 Acknowledgments

- **CelesTrak**: For providing free, reliable orbital data to the space community
- **Dr. T.S. Kelso**: Founder and director of CelesTrak
- **Space community**: For supporting open access to space data

## 📞 Contact

For questions about this repository, please open an issue. For questions about the underlying data, please contact [CelesTrak](https://celestrak.org/webmaster.php).

---

*This repository is not affiliated with CelesTrak.org. It serves as an automated mirror of their publicly available data.*
