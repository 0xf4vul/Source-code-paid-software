.class final Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$2;->a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$2;->a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->m:Lcom/piriform/ccleaner/scheduler/h;

    .line 1087
    iget-object v1, v0, Lcom/piriform/ccleaner/scheduler/h;->d:Lcom/piriform/ccleaner/l/b;

    if-eqz v1, :cond_0

    .line 1088
    iget-object v1, v0, Lcom/piriform/ccleaner/scheduler/h;->d:Lcom/piriform/ccleaner/l/b;

    .line 1134
    iput-boolean p2, v1, Lcom/piriform/ccleaner/l/b;->e:Z

    .line 1089
    iget-object v1, v0, Lcom/piriform/ccleaner/scheduler/h;->c:Lcom/piriform/ccleaner/scheduler/h$a;

    iget-object v0, v0, Lcom/piriform/ccleaner/scheduler/h;->d:Lcom/piriform/ccleaner/l/b;

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/scheduler/h$a;->a(Lcom/piriform/ccleaner/l/c;)V

    .line 69
    :cond_0
    return-void
.end method
