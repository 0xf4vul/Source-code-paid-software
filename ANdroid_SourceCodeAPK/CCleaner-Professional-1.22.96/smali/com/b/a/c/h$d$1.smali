.class final Lcom/b/a/c/h$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/c/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/c/h$d;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/c/h$d;


# direct methods
.method constructor <init>(Lcom/b/a/c/h$d;)V
    .locals 0

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/b/a/c/h$d$1;->a:Lcom/b/a/c/h$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/b/a/c/h$d$1;->a:Lcom/b/a/c/h$d;

    .line 2375
    iget-object v0, v0, Lcom/b/a/c/h$d;->a:Lcom/b/a/c/ab;

    .line 3046
    iget-object v1, v0, Lcom/b/a/c/ab;->a:Lc/a/a/a/a/f/c;

    iget-object v0, v0, Lcom/b/a/c/ab;->a:Lc/a/a/a/a/f/c;

    invoke-interface {v0}, Lc/a/a/a/a/f/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "always_send_reports_opt_in"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v1, v0}, Lc/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 1401
    return-void
.end method
