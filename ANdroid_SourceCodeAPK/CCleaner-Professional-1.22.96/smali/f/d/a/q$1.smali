.class final Lf/d/a/q$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/d/a/q$a;

.field final synthetic b:Lf/d/a/q;


# direct methods
.method constructor <init>(Lf/d/a/q;Lf/d/a/q$a;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lf/d/a/q$1;->b:Lf/d/a/q;

    iput-object p2, p0, Lf/d/a/q$1;->a:Lf/d/a/q$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lf/d/a/q$1;->a:Lf/d/a/q$a;

    invoke-virtual {v0, p1, p2}, Lf/d/a/q$a;->b(J)V

    .line 46
    return-void
.end method
