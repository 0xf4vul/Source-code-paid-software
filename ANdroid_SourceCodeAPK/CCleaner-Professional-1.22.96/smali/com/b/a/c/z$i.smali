.class final Lcom/b/a/c/z$i;
.super Lcom/b/a/c/z$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    new-array v0, v1, [Lcom/b/a/c/z$j;

    invoke-direct {p0, v1, v0}, Lcom/b/a/c/z$j;-><init>(I[Lcom/b/a/c/z$j;)V

    .line 156
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/b/a/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    return-void
.end method
