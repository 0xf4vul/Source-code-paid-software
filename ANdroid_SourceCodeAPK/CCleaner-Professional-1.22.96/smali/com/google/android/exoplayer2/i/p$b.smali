.class public Lcom/google/android/exoplayer2/i/p$b;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/i/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/exoplayer2/i/h;


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/i/h;I)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 92
    iput-object p2, p0, Lcom/google/android/exoplayer2/i/p$b;->b:Lcom/google/android/exoplayer2/i/h;

    .line 93
    iput p3, p0, Lcom/google/android/exoplayer2/i/p$b;->a:I

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/i/h;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 86
    iput-object p2, p0, Lcom/google/android/exoplayer2/i/p$b;->b:Lcom/google/android/exoplayer2/i/h;

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/i/p$b;->a:I

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/i/h;)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    iput-object p3, p0, Lcom/google/android/exoplayer2/i/p$b;->b:Lcom/google/android/exoplayer2/i/h;

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/i/p$b;->a:I

    .line 101
    return-void
.end method
