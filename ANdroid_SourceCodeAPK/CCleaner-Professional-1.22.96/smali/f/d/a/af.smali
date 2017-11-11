.class public final Lf/d/a/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/af$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d$b",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method private a(Lf/i;)Lf/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lf/i",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lf/d/b/b;

    invoke-direct {v0, p1}, Lf/d/b/b;-><init>(Lf/i;)V

    .line 61
    new-instance v1, Lf/d/a/af$1;

    invoke-direct {v1, p0, v0, p1}, Lf/d/a/af$1;-><init>(Lf/d/a/af;Lf/d/b/b;Lf/i;)V

    .line 115
    invoke-virtual {p1, v1}, Lf/i;->a(Lf/j;)V

    .line 116
    invoke-virtual {p1, v0}, Lf/i;->a(Lf/f;)V

    .line 117
    return-object v1
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lf/i;

    invoke-direct {p0, p1}, Lf/d/a/af;->a(Lf/i;)Lf/i;

    move-result-object v0

    return-object v0
.end method
