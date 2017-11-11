.class public final Lf/d/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/g$a;,
        Lf/d/a/g$b;,
        Lf/d/a/g$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:Lf/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final b:Lf/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/e",
            "<-TT;+",
            "Lf/d",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I


# direct methods
.method public constructor <init>(Lf/d;Lf/c/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d",
            "<+TT;>;",
            "Lf/c/e",
            "<-TT;+",
            "Lf/d",
            "<+TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lf/d/a/g;->a:Lf/d;

    .line 67
    iput-object p2, p0, Lf/d/a/g;->b:Lf/c/e;

    .line 68
    const/4 v0, 0x2

    iput v0, p0, Lf/d/a/g;->c:I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lf/d/a/g;->d:I

    .line 70
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 42
    check-cast p1, Lf/i;

    .line 1076
    iget v0, p0, Lf/d/a/g;->d:I

    if-nez v0, :cond_1

    .line 1077
    new-instance v0, Lf/f/c;

    invoke-direct {v0, p1}, Lf/f/c;-><init>(Lf/i;)V

    .line 1082
    :goto_0
    new-instance v1, Lf/d/a/g$c;

    iget-object v2, p0, Lf/d/a/g;->b:Lf/c/e;

    iget v3, p0, Lf/d/a/g;->c:I

    iget v4, p0, Lf/d/a/g;->d:I

    invoke-direct {v1, v0, v2, v3, v4}, Lf/d/a/g$c;-><init>(Lf/i;Lf/c/e;II)V

    .line 1084
    invoke-virtual {p1, v1}, Lf/i;->a(Lf/j;)V

    .line 1085
    iget-object v0, v1, Lf/d/a/g$c;->i:Lf/j/c;

    invoke-virtual {p1, v0}, Lf/i;->a(Lf/j;)V

    .line 1086
    new-instance v0, Lf/d/a/g$1;

    invoke-direct {v0, p0, v1}, Lf/d/a/g$1;-><init>(Lf/d/a/g;Lf/d/a/g$c;)V

    invoke-virtual {p1, v0}, Lf/i;->a(Lf/f;)V

    .line 1108
    iget-object v0, p1, Lf/i;->b:Lf/d/e/l;

    .line 2059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 1093
    if-nez v0, :cond_0

    .line 1094
    iget-object v0, p0, Lf/d/a/g;->a:Lf/d;

    invoke-virtual {v0, v1}, Lf/d;->a(Lf/i;)Lf/j;

    .line 42
    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1079
    goto :goto_0
.end method
