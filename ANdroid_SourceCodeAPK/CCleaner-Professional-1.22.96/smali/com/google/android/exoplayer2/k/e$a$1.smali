.class final Lcom/google/android/exoplayer2/k/e$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/k/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/b/d;

.field final synthetic b:Lcom/google/android/exoplayer2/k/e$a;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/k/e$a;Lcom/google/android/exoplayer2/b/d;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/exoplayer2/k/e$a$1;->b:Lcom/google/android/exoplayer2/k/e$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/k/e$a$1;->a:Lcom/google/android/exoplayer2/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/k/e$a$1;->b:Lcom/google/android/exoplayer2/k/e$a;

    .line 1109
    iget-object v0, v0, Lcom/google/android/exoplayer2/k/e$a;->b:Lcom/google/android/exoplayer2/k/e;

    .line 132
    iget-object v1, p0, Lcom/google/android/exoplayer2/k/e$a$1;->a:Lcom/google/android/exoplayer2/b/d;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/k/e;->a(Lcom/google/android/exoplayer2/b/d;)V

    .line 133
    return-void
.end method
