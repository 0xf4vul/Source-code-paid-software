.class public final Lcom/avast/android/c/e;
.super Ljava/io/IOException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/avast/android/c/e;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 17
    return-void
.end method
