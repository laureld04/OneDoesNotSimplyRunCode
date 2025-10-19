<!-- README for OneDoesNotSimplyRunCode -->

<h1 id="title">🖥️ OneDoesNotSimplyRunCode</h1>

<p>
<strong>Code and Containers Commonly Made or Used</strong><br/>
<em>"insert funny coding meme here"</em>
</p>

<hr/>

<nav>
  <h2>📑 Table of Contents</h2>
  <ol>
    <li><a href="#intro">Introduction</a></li>
    <li><a href="#installation">Installation (Linux on Windows)</a></li>
    <li><a href="#docker-containers">Docker-Related Containers</a></li>
    <li><a href="#in-house">Made In House</a></li>
    <li><a href="#matlab-code">MATLAB-Related Code</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
  </ol>
</nav>

<hr/>

<h2 id="intro">📖 Introduction</h2>
<p>
This repository is a central hub for <strong>analysis and processing of MRI data</strong>, featuring 
ready-to-use containers, scripts, and references to commonly used software packages. 
The goal is to simplify setup and make code more reproducible across platforms 
(especially <strong>Linux on Windows via WSL2</strong>).
</p>

<hr/>

<h2 id="installation">⚙️ Installation (Linux on Windows)</h2>
<p>
To build and run Linux-based containers on Windows, install WSL2 and Docker Desktop:
</p>
<ul>
  <li><a href="https://learn.microsoft.com/en-us/windows/wsl/install">Microsoft WSL2 install guide</a></li>
  <li>Enable integration with Docker Desktop (check Docker settings → WSL2 backend)</li>
  <li>Recommended: Ubuntu 20.04/22.04 as default WSL2 distro</li>
</ul>

<p><em>Tip:</em> Test your setup with <code>wsl --list --verbose</code> and <code>docker run hello-world</code>.</p>

<hr/>

<h2 id="docker-containers">🐳 Docker-Related Containers</h2>
<ul>
  <li>
    <a href="https://github.com/QMICodeBase/TORTOISEV4?tab=readme-ov-file">TORTOISE v4 Container</a>  
    <p>
    Containerized TORTOISE for DTI preprocessing and analysis.
    </p>
  </li>
</ul>

<hr/>

<h2 id="in-house">🏠 Made In House</h2>
<ul>
  <li>
    <code>brkraw.def</code>  
    <p>
    Singularity/Docker definition for <a href="https://github.com/neurolabusc/brkraw">brkraw</a>, 
    enabling use on Linux and testing on Windows (via WSL2).  
    </p>
  </li>
</ul>

<hr/>

<h2 id="matlab-code">🧮 MATLAB-Related Code</h2>
<ul>
  <li>
    <a href="https://people.eecs.berkeley.edu/~chunlei.liu/software.html">STI Suite</a> — for QSM processing
  </li>
  <li>
    Voxel-based Analysis Approaches — <em>homebrewed scripts</em> for morphometry and statistical analysis
  </li>
</ul>

<hr/>

<h2 id="contributing">🤝 Contributing</h2>
<p>
Contributions are welcome! Please:
</p>
<ol>
  <li>Fork the repo and create a new branch.</li>
  <li>Add your container or code reference under the appropriate section.</li>
  <li>Submit a pull request with a clear description of changes.</li>
</ol>

<hr/>

<h2 id="license">📄 License</h2>
<p>
Unless otherwise noted, all scripts and definitions are released under the <strong>MIT License</strong>.
External tools linked here remain under their respective licenses.
</p>

<hr/>

<footer>
  <p><em>Maintainer:</em> Your Name • <em>Lab:</em> Your Lab • <em>Contact:</em> your.email@domain</p>
</footer>
