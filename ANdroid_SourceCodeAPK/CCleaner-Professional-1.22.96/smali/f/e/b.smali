.class public abstract Lf/e/b;
.super Lf/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/d",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lf/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lf/d;-><init>(Lf/d$a;)V

    .line 40
    return-void
.end method


# virtual methods
.method public abstract b(Lf/c/b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/c/b",
            "<-",
            "Lf/j;",
            ">;)V"
        }
    .end annotation
.end method

.method public final d()Lf/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    .line 1108
    invoke-static {}, Lf/c/c;->a()Lf/c/c$b;

    move-result-object v0

    .line 1132
    new-instance v1, Lf/d/a/e;

    invoke-direct {v1, p0, v0}, Lf/d/a/e;-><init>(Lf/e/b;Lf/c/b;)V

    invoke-static {v1}, Lf/e/b;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    .line 93
    return-object v0
.end method
