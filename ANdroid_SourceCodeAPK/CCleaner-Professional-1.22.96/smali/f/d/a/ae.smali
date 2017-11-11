.class public final Lf/d/a/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lf/d/a/ae;->a:I

    .line 43
    return-void
.end method

.method private a(Lf/i;)Lf/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;)",
            "Lf/i",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lf/d/a/ae$1;

    invoke-direct {v0, p0, p1}, Lf/d/a/ae$1;-><init>(Lf/d/a/ae;Lf/i;)V

    .line 120
    iget v1, p0, Lf/d/a/ae;->a:I

    if-nez v1, :cond_0

    .line 121
    invoke-virtual {p1}, Lf/i;->onCompleted()V

    .line 122
    invoke-virtual {v0}, Lf/i;->b()V

    .line 134
    :cond_0
    invoke-virtual {p1, v0}, Lf/i;->a(Lf/j;)V

    .line 136
    return-object v0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lf/i;

    invoke-direct {p0, p1}, Lf/d/a/ae;->a(Lf/i;)Lf/i;

    move-result-object v0

    return-object v0
.end method
