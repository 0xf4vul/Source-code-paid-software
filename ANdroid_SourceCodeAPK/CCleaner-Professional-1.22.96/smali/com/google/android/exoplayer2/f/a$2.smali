.class final Lcom/google/android/exoplayer2/f/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/f/a;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/i/f;[Lcom/google/android/exoplayer2/c/f;ILandroid/os/Handler;Lcom/google/android/exoplayer2/f/b$a;Lcom/google/android/exoplayer2/f/d$a;Lcom/google/android/exoplayer2/i/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/f/a;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/f/a;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/exoplayer2/f/a$2;->a:Lcom/google/android/exoplayer2/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a$2;->a:Lcom/google/android/exoplayer2/f/a;

    .line 1049
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/f/a;->r:Z

    .line 126
    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a$2;->a:Lcom/google/android/exoplayer2/f/a;

    .line 2049
    iget-object v0, v0, Lcom/google/android/exoplayer2/f/a;->h:Lcom/google/android/exoplayer2/f/c$a;

    .line 127
    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a$2;->a:Lcom/google/android/exoplayer2/f/a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/f/c$a;->a(Lcom/google/android/exoplayer2/f/f;)V

    .line 129
    :cond_0
    return-void
.end method
