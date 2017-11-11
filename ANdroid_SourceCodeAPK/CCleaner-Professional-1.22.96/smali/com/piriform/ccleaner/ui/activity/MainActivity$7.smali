.class final Lcom/piriform/ccleaner/ui/activity/MainActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/c;

.field final synthetic b:Lcom/piriform/ccleaner/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/activity/MainActivity;Lcom/piriform/ccleaner/c;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$7;->b:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    iput-object p2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$7;->a:Lcom/piriform/ccleaner/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$7;->b:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$7;->a:Lcom/piriform/ccleaner/c;

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->a(Lcom/piriform/ccleaner/ui/activity/MainActivity;Lcom/piriform/ccleaner/c;)Lcom/piriform/ccleaner/c;

    .line 406
    return-void
.end method
