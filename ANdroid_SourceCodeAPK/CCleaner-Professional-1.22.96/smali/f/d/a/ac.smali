.class public final Lf/d/a/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lf/g;

.field final b:Lf/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/d;Lf/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d",
            "<TT;>;",
            "Lf/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lf/d/a/ac;->a:Lf/g;

    .line 37
    iput-object p1, p0, Lf/d/a/ac;->b:Lf/d;

    .line 38
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 30
    check-cast p1, Lf/i;

    .line 1042
    iget-object v0, p0, Lf/d/a/ac;->a:Lf/g;

    invoke-virtual {v0}, Lf/g;->a()Lf/g$a;

    move-result-object v0

    .line 1043
    invoke-virtual {p1, v0}, Lf/i;->a(Lf/j;)V

    .line 1045
    new-instance v1, Lf/d/a/ac$1;

    invoke-direct {v1, p0, p1, v0}, Lf/d/a/ac$1;-><init>(Lf/d/a/ac;Lf/i;Lf/g$a;)V

    invoke-virtual {v0, v1}, Lf/g$a;->a(Lf/c/a;)Lf/j;

    .line 30
    return-void
.end method
