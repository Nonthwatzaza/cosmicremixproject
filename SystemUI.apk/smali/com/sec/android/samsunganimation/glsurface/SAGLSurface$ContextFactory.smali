.class Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ContextFactory;
.super Ljava/lang/Object;
.source "SAGLSurface.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/samsunganimation/glsurface/SAGLSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextFactory"
.end annotation


# static fields
.field private static EGL_CONTEXT_CLIENT_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 202
    const/16 v0, 0x3098

    sput v0, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    .line 201
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ContextFactory;)V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ContextFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 5
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v4, 0x2

    .line 204
    # getter for: Lcom/sec/android/samsunganimation/glsurface/SAGLSurface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface;->access$3()Ljava/lang/String;

    move-result-object v2

    const-string v3, "creating OpenGL ES 2.0 context"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v2, "Before eglCreateContext"

    # invokes: Lcom/sec/android/samsunganimation/glsurface/SAGLSurface;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    invoke-static {v2, p1}, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface;->access$4(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 206
    const/4 v2, 0x3

    new-array v0, v2, [I

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface$ContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v3, v0, v2

    const/4 v2, 0x1

    aput v4, v0, v2

    const/16 v2, 0x3038

    aput v2, v0, v4

    .line 207
    .local v0, "attrib_list":[I
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 208
    .local v1, "context":Ljavax/microedition/khronos/egl/EGLContext;
    const-string v2, "After eglCreateContext"

    # invokes: Lcom/sec/android/samsunganimation/glsurface/SAGLSurface;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    invoke-static {v2, p1}, Lcom/sec/android/samsunganimation/glsurface/SAGLSurface;->access$4(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 209
    return-object v1
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "context"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 213
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 214
    return-void
.end method
