.class final Lcom/google/android/exoplayer2/a/c$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/a/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/b/d;

.field final synthetic b:Lcom/google/android/exoplayer2/a/c$a;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/a/c$a;Lcom/google/android/exoplayer2/b/d;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/exoplayer2/a/c$a$1;->b:Lcom/google/android/exoplayer2/a/c$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/a/c$a$1;->a:Lcom/google/android/exoplayer2/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/c$a$1;->b:Lcom/google/android/exoplayer2/a/c$a;

    .line 1085
    iget-object v0, v0, Lcom/google/android/exoplayer2/a/c$a;->b:Lcom/google/android/exoplayer2/a/c;

    .line 108
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/c$a$1;->a:Lcom/google/android/exoplayer2/b/d;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/a/c;->c(Lcom/google/android/exoplayer2/b/d;)V

    .line 109
    return-void
.end method
