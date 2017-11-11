.class abstract Lf/d/e/b/a;
.super Lf/d/e/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lf/d/e/b/b",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lf/d/e/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lf/d/e/b/a;->a()Lf/d/e/a/c;

    move-result-object v0

    invoke-virtual {p0}, Lf/d/e/b/a;->b()Lf/d/e/a/c;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final size()I
    .locals 4

    .prologue
    .line 103
    invoke-virtual {p0}, Lf/d/e/b/a;->a()Lf/d/e/a/c;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Lf/d/e/b/a;->b()Lf/d/e/a/c;

    move-result-object v3

    .line 105
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    .line 107
    :goto_0
    if-eq v2, v3, :cond_1

    const v0, 0x7fffffff

    if-ge v1, v0, :cond_1

    .line 1057
    :cond_0
    invoke-virtual {v2}, Lf/d/e/a/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/e/a/c;

    .line 109
    if-eqz v0, :cond_0

    .line 111
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    .line 112
    goto :goto_0

    .line 113
    :cond_1
    return v1
.end method
