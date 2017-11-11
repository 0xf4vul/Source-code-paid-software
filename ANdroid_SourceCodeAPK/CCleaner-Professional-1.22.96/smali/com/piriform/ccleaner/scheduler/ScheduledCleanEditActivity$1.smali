.class final Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


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
    .line 59
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$1;->a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$1;->a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->m:Lcom/piriform/ccleaner/scheduler/h;

    .line 1094
    iget-object v1, v0, Lcom/piriform/ccleaner/scheduler/h;->d:Lcom/piriform/ccleaner/l/b;

    if-eqz v1, :cond_0

    .line 1095
    iget-object v1, v0, Lcom/piriform/ccleaner/scheduler/h;->d:Lcom/piriform/ccleaner/l/b;

    .line 1119
    invoke-static {p2, p3}, Lcom/piriform/ccleaner/l/a;->a(II)Lcom/piriform/ccleaner/l/a;

    move-result-object v2

    .line 2115
    iput-object v2, v1, Lcom/piriform/ccleaner/l/b;->c:Lcom/piriform/ccleaner/l/a;

    .line 1096
    iget-object v1, v0, Lcom/piriform/ccleaner/scheduler/h;->c:Lcom/piriform/ccleaner/scheduler/h$a;

    iget-object v0, v0, Lcom/piriform/ccleaner/scheduler/h;->d:Lcom/piriform/ccleaner/l/b;

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/scheduler/h$a;->a(Lcom/piriform/ccleaner/l/c;)V

    .line 63
    :cond_0
    return-void
.end method
