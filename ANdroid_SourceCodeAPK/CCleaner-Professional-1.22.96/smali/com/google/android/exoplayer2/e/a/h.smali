.class public final Lcom/google/android/exoplayer2/e/a/h;
.super Lcom/google/android/exoplayer2/e/a/e;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "TXXX"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/e/a/e;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/google/android/exoplayer2/e/a/h;->a:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/google/android/exoplayer2/e/a/h;->b:Ljava/lang/String;

    .line 32
    return-void
.end method
