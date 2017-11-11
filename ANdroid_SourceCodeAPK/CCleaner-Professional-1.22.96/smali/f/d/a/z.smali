.class public final Lf/d/a/z;
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
.field final a:Lf/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/e",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lf/d",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/c/e",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lf/d",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lf/d/a/z;->a:Lf/c/e;

    .line 81
    return-void
.end method

.method private a(Lf/i;)Lf/i;
    .locals 3
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
    .line 85
    new-instance v0, Lf/d/b/a;

    invoke-direct {v0}, Lf/d/b/a;-><init>()V

    .line 87
    new-instance v1, Lf/j/c;

    invoke-direct {v1}, Lf/j/c;-><init>()V

    .line 89
    new-instance v2, Lf/d/a/z$3;

    invoke-direct {v2, p0, p1, v0, v1}, Lf/d/a/z$3;-><init>(Lf/d/a/z;Lf/i;Lf/d/b/a;Lf/j/c;)V

    .line 163
    invoke-virtual {v1, v2}, Lf/j/c;->a(Lf/j;)V

    .line 165
    invoke-virtual {p1, v1}, Lf/i;->a(Lf/j;)V

    .line 166
    invoke-virtual {p1, v0}, Lf/i;->a(Lf/f;)V

    .line 168
    return-object v2
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lf/i;

    invoke-direct {p0, p1}, Lf/d/a/z;->a(Lf/i;)Lf/i;

    move-result-object v0

    return-object v0
.end method
