.class final Lcom/piriform/ccleaner/rooted/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/a$a;
.implements Lb/a/a/b$e;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    sparse-switch p1, :sswitch_data_0

    .line 88
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v3, "Expected command. Command code="

    aput-object v3, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "Exit code="

    aput-object v1, v0, v4

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "output="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->e([Ljava/lang/Object;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 1094
    :sswitch_0
    if-nez p2, :cond_1

    move v0, v1

    .line 35
    :goto_1
    if-eqz v0, :cond_2

    .line 36
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "Remounted system partition as read-write to prepare for deletion."

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->c([Ljava/lang/Object;)V

    .line 40
    :goto_2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-array v0, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "Remount output="

    aput-object v3, v0, v2

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1094
    goto :goto_1

    .line 38
    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "Could not remount system partition as read-write."

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->e([Ljava/lang/Object;)V

    goto :goto_2

    .line 2094
    :sswitch_1
    if-nez p2, :cond_3

    move v0, v1

    .line 45
    :goto_3
    if-eqz v0, :cond_4

    .line 46
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "Remounted system partition as read-only to restore previous state."

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->c([Ljava/lang/Object;)V

    .line 50
    :goto_4
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-array v0, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "Remount output="

    aput-object v3, v0, v2

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 2094
    goto :goto_3

    .line 48
    :cond_4
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "Could not remount system partition as read-only."

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->e([Ljava/lang/Object;)V

    goto :goto_4

    .line 3094
    :sswitch_2
    if-nez p2, :cond_5

    move v0, v1

    .line 55
    :goto_5
    if-eqz v0, :cond_6

    .line 56
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "Successfully deleted file/folder"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->c([Ljava/lang/Object;)V

    .line 60
    :goto_6
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    new-array v0, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "Delete output="

    aput-object v3, v0, v2

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->a([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 3094
    goto :goto_5

    .line 58
    :cond_6
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "Could not delete file/folder."

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->e([Ljava/lang/Object;)V

    goto :goto_6

    .line 4094
    :sswitch_3
    if-nez p2, :cond_7

    move v0, v1

    .line 65
    :goto_7
    if-eqz v0, :cond_8

    .line 66
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "Successfully initiated the reboot sequence"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->c([Ljava/lang/Object;)V

    .line 70
    :goto_8
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    new-array v0, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "Reboot output="

    aput-object v3, v0, v2

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->a([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 4094
    goto :goto_7

    .line 68
    :cond_8
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "Could issue reboot command"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->e([Ljava/lang/Object;)V

    goto :goto_8

    .line 5094
    :sswitch_4
    if-nez p2, :cond_9

    move v0, v1

    .line 75
    :goto_9
    if-eqz v0, :cond_a

    .line 76
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "Successfully stopped app"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->c([Ljava/lang/Object;)V

    .line 80
    :goto_a
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-array v0, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "Stop app output="

    aput-object v3, v0, v2

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->a([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 5094
    goto :goto_9

    .line 78
    :cond_a
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "Could issue stopp app"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->e([Ljava/lang/Object;)V

    goto :goto_a

    .line 85
    :sswitch_5
    new-array v0, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "Ran command:"

    aput-object v3, v0, v2

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->a([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 33
    nop

    :sswitch_data_0
    .sparse-switch
        0xaaa -> :sswitch_0
        0xbbb -> :sswitch_1
        0xccc -> :sswitch_2
        0xddd -> :sswitch_5
        0xeee -> :sswitch_3
        0xfff -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->c([Ljava/lang/Object;)V

    .line 28
    return-void
.end method
