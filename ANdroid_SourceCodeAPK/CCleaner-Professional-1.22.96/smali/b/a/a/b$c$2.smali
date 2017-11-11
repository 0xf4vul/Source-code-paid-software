.class final Lb/a/a/b$c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/b$c;->a(Ljava/lang/String;Lb/a/a/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/e$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lb/a/a/b$c;


# direct methods
.method constructor <init>(Lb/a/a/b$c;Lb/a/a/e$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1377
    iput-object p1, p0, Lb/a/a/b$c$2;->c:Lb/a/a/b$c;

    iput-object p2, p0, Lb/a/a/b$c$2;->a:Lb/a/a/e$a;

    iput-object p3, p0, Lb/a/a/b$c$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1381
    :try_start_0
    iget-object v0, p0, Lb/a/a/b$c$2;->a:Lb/a/a/e$a;

    iget-object v1, p0, Lb/a/a/b$c$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lb/a/a/e$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    iget-object v0, p0, Lb/a/a/b$c$2;->c:Lb/a/a/b$c;

    invoke-static {v0}, Lb/a/a/b$c;->a(Lb/a/a/b$c;)V

    .line 1384
    return-void

    .line 1383
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/b$c$2;->c:Lb/a/a/b$c;

    invoke-static {v1}, Lb/a/a/b$c;->a(Lb/a/a/b$c;)V

    throw v0
.end method
