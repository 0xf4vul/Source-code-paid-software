.class final Lf/d/c/b$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/d/c/b$a;->a(Lf/c/a;)Lf/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/c/a;

.field final synthetic b:Lf/d/c/b$a;


# direct methods
.method constructor <init>(Lf/d/c/b$a;Lf/c/a;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lf/d/c/b$a$1;->b:Lf/d/c/b$a;

    iput-object p2, p0, Lf/d/c/b$a$1;->a:Lf/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lf/d/c/b$a$1;->b:Lf/d/c/b$a;

    .line 1157
    iget-object v0, v0, Lf/d/c/b$a;->a:Lf/d/e/l;

    .line 2059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 169
    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lf/d/c/b$a$1;->a:Lf/c/a;

    invoke-interface {v0}, Lf/c/a;->a()V

    goto :goto_0
.end method
