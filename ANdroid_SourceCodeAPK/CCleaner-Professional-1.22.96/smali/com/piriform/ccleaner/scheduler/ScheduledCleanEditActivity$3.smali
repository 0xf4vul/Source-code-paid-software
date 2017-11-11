.class final Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 71
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$3;->a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity$3;->a:Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;->a(Lcom/piriform/ccleaner/scheduler/ScheduledCleanEditActivity;)Landroid/app/TimePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 75
    return-void
.end method
