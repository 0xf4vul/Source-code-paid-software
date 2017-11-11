.class final Lcom/google/android/exoplayer2/k/e$a$3;
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
.field final synthetic a:Lcom/google/android/exoplayer2/Format;

.field final synthetic b:Lcom/google/android/exoplayer2/k/e$a;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/k/e$a;Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/exoplayer2/k/e$a$3;->b:Lcom/google/android/exoplayer2/k/e$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/k/e$a$3;->a:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/k/e$a$3;->b:Lcom/google/android/exoplayer2/k/e$a;

    .line 1109
    iget-object v0, v0, Lcom/google/android/exoplayer2/k/e$a;->b:Lcom/google/android/exoplayer2/k/e;

    .line 162
    iget-object v1, p0, Lcom/google/android/exoplayer2/k/e$a$3;->a:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/k/e;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 163
    return-void
.end method
