.class public final Lf/d/a/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/y$a;
    }
.end annotation

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
.field private final a:Lf/g;

.field private final b:Z

.field private final c:I


# direct methods
.method public constructor <init>(Lf/g;I)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lf/d/a/y;->a:Lf/g;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/d/a/y;->b:Z

    .line 62
    if-lez p2, :cond_0

    :goto_0
    iput p2, p0, Lf/d/a/y;->c:I

    .line 63
    return-void

    .line 62
    :cond_0
    sget p2, Lf/d/e/i;->b:I

    goto :goto_0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 40
    check-cast p1, Lf/i;

    .line 1067
    iget-object v0, p0, Lf/d/a/y;->a:Lf/g;

    instance-of v0, v0, Lf/d/c/e;

    if-eqz v0, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return-object p1

    .line 1070
    :cond_1
    iget-object v0, p0, Lf/d/a/y;->a:Lf/g;

    instance-of v0, v0, Lf/d/c/j;

    if-nez v0, :cond_0

    .line 1074
    new-instance v0, Lf/d/a/y$a;

    iget-object v1, p0, Lf/d/a/y;->a:Lf/g;

    iget-boolean v2, p0, Lf/d/a/y;->b:Z

    iget v3, p0, Lf/d/a/y;->c:I

    invoke-direct {v0, v1, p1, v2, v3}, Lf/d/a/y$a;-><init>(Lf/g;Lf/i;ZI)V

    .line 1139
    iget-object v1, v0, Lf/d/a/y$a;->a:Lf/i;

    .line 1141
    new-instance v2, Lf/d/a/y$a$1;

    invoke-direct {v2, v0}, Lf/d/a/y$a$1;-><init>(Lf/d/a/y$a;)V

    invoke-virtual {v1, v2}, Lf/i;->a(Lf/f;)V

    .line 1152
    iget-object v2, v0, Lf/d/a/y$a;->c:Lf/g$a;

    invoke-virtual {v1, v2}, Lf/i;->a(Lf/j;)V

    .line 1153
    invoke-virtual {v1, v0}, Lf/i;->a(Lf/j;)V

    move-object p1, v0

    .line 40
    goto :goto_0
.end method
